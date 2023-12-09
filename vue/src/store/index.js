import { createStore as _createStore } from 'vuex';
import axios from 'axios';
import PathwayService from '../services/PathwayService';
import CurriculumService from '../services/CurriculumService';

export function createStore(currentToken, currentUser) {
  let store = _createStore({
    state: {
      token: currentToken || '',
      user: currentUser || {},
      pathways: [],      
      preferredName: '', // Store the user's preferred name
      curriculums: []
    },
    mutations: {
      SET_AUTH_TOKEN(state, token) {
        state.token = token;
        localStorage.setItem('token', token);
        axios.defaults.headers.common['Authorization'] = `Bearer ${token}`;
      },
      SET_USER(state, user) {
        state.user = user;
        localStorage.setItem('user', JSON.stringify(user));
      },
      LOGOUT(state) {
        localStorage.removeItem('token');
        localStorage.removeItem('user');
        state.token = '';
        state.user = {};
        axios.defaults.headers.common = {};
      },
      SET_SEARCH_RESULTS(state, results) {
        state.searchResults = results;
      },
      SET_PATHWAYS(state, pathways) {
        state.pathways = pathways;
      },
      SET_CURRICULUM(state, curriculums){
        state.curriculums = curriculums;
      },
      SET_PREFERRED_NAME(state, name) {
        state.preferredName = name;
      },
      
    },
    actions: {
      async performSearch({ commit }, query) {
        try {
          const keywords = query.split(/\s+/); // Split the query into individual words
          let allResults = [];
    
          for (const key of keywords) {
            const response = await PathwayService.addUserInput(key);
            allResults.push(...response.data); // Assuming each response is an array of results
          }
    
          // Combine and possibly de-duplicate results here, if necessary
          commit('SET_SEARCH_RESULTS', allResults);
        } catch (error) {
          console.error('Search error:', error);
        }
      },
      async fetchRandomPathways({ commit }) {
        try {
          const totalItems = 21; // Total number of items available
          const numberOfItemsToFetch = 9; // Number of items to display
          let selectedIds = new Set();
      
          // Randomly pick unique IDs
          while (selectedIds.size < numberOfItemsToFetch) {
            const randomId = Math.floor(Math.random() * totalItems) + 1;
            selectedIds.add(randomId);
          }
      
          let pathways = [];
          for (let id of selectedIds) {
            const response = await PathwayService.getResultById(id);
            pathways.push(response.data);
          }
      
          // Assuming each response.data is an individual pathway item
          commit('SET_PATHWAYS', pathways);
        } catch (error) {
          console.error('Error fetching random pathways:', error);
        }
      },
      async fetchRandomCurriculum({ commit }) {
        try {
          const totalItems = 41; // Total number of items available(this may change when curriculum table is fully populated)
          const numberOfItemsToFetch = 9; // Number of items to display
          let selectedIds = new Set();
      
          // Randomly pick unique IDs
          while (selectedIds.size < numberOfItemsToFetch) {
            const randomId = Math.floor(Math.random() * totalItems) + 1;
            selectedIds.add(randomId);
          }
      
          let curriculums = [];
          for (let id of selectedIds) {
            const response = await CurriculumService.getResultById(id);
            curriculums.push(response.data);
          }
      
          // Assuming each response.data is an individual pathway item
          commit('SET_CURRICULUM', curriculums);
        } catch (error) {
          console.error('Error fetching random curriculum:', error);
        }
      },
    }
  });
  return store;
}
